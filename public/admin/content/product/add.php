<?php
    $array = ["","1.00", "", "", "", ""];
    if(isset($_SESSION['productData'])){
        $array = $_SESSION['productData'];
        unset($_SESSION['productData']);
    }
    $category = $aC->getCategorySelectField();
?>
<main>
    <section>
        <form action="/admin/fun/productAdd/" method="post" class="productAddForm" enctype="multipart/form-data">
        <div class="title">Formularz dodawania produktu</div>
            <div>
                <fieldset>
                    <legend> Name </legend>
                    <input placeholder="Name" type="text" name="name" pattern="[A-Ża-ż0-9 -:.,]{3,40}"  title="od 3 do 40 znaków"  value="<?php echo $array[0]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Price </legend>
                    <input placeholder="Price" type="number" min="0" step="0.01" name="price" value="<?php echo $array[1]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Quantity </legend>
                    <input placeholder="Quantity" type="number" min="0" name="quantity" value="<?php echo $array[2]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Specification* </legend>
                    <textarea maxlength="400" placeholder="Specification:property;Specification:property;" type="text" name="specification" ><?php echo $array[3]; ?></textarea>
                </fieldset>
                <div class="info">*Format specyfikacji -> Właściwość: wartość;</div>
            </div>
            <div>
                <fieldset>
                    <legend> Category </legend>    
                    <select name='category'>
                        <?php 
                            foreach($category as $key=>$value){
                                echo "<option value='{$value['idCategory']}'>{$value['category']}</a></option>";
                            }
                        ?>
                    </select>
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Photo main </legend>
                    <input placeholder="Photo main" type="file" name="photoMain" value="<?php echo $array[5]; ?>" accept=".png" capture/>
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Photo Gallery </legend>
                    <input placeholder="Photo gallery" type="file" name="photoGallery[]" value="<?php echo $array[5]; ?>" multiple accept=".png" files/>
                </fieldset>
            </div>
            <div class="buttons">
                <button>Dodaj</button><button><a href="/admin/page/product/">Anuluj</a></button>
            </div>

        </form>
    </section>
</main>