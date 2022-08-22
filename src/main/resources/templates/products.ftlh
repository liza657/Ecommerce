
<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Search products</h1><hr>
    <form method="get" action="/">
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="searchCity">City</label>
                <select id="searchCity" class="form-control">
                    <option value="">City not selected</option>

                    <option value="Rivne">Rivne</option>
                    <option value="Lviv">Lviv</option>
                    <option value="Lutsk">Lutsk</option>
                    <option value="Kyiv">Kyiv</option>
                    <option value="Odesa">Odesa</option>
                    <option value="Kherson">Kherson</option>
                    <option value="Donetsk">Donetsk</option>
                    <option value="Kharkiv">Kharkiv</option>
                    <option value="Luhansk">Luhansk</option>
                    <option value="Vinnytsia">Vinnytsia</option>
                    <option value="Zhytomyr">Zhytomyr</option>
                    <option value="Mykolayiv">Mykolayiv</option>
                    <option value="Cherkasy">Cherkasy</option>
                    <option value="Poltava">Poltava</option>
                    <option value="Ivano-Frankivsk">Ivano-Frankivsk</option>
                    <option value="Uzhhorod">Uzhhorod</option>
                    <option value="Dnipro">Dnipro</option>
                    <option value="Sumy">Sumy</option>
                    <option value="Chernihiv">Chernihiv</option>
                    <option value="Khmelnytskyi">Khmelnytskyi</option>
                    <option value="Ternopil">Ternopil</option>
                    <option value="Kirovohrad">Kirovohrad</option>
                    <option value="Chernivtsi">Chernivtsi</option>
                    <option value="Feodosia">Feodosia</option>
                    <option value="Yalta">Yalta</option>
                    <option value="Simferopol">v</option>
                    <option value="Alushta">Alushta</option>
                </select>
            </div>
            <div class="form-group col-md-10">
                <label for="searchWord">Search by title</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
            </div>
            <button style="width: 100%" type="submit" class="btn btn-dark">Search</button>
        </div>
    </form>
    <hr>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">

                    <img src="/images/${product.previewImageId}"
                         class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} ₽</p>
                    </div>
                    <div class="card-footer">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Not found</h1>
        </#list>
    </div>
</@t.template>