# newtesting

A new Flutter project.

// Request ---------------------
curl --request GET \
     --url 'https://api.nexaflow.xyz/api/page/64d320462aed52cfe16ddde7?websiteId=64d3200e2aed52cfe16ddddf' \
     --header 'accept: application/json' \
     --header 'x-api-key: iYk8yLsF4Q+/U'
// Request-----------------------
{
  "blocks": [
    {
      "blockName": "Products",
      "blockType": "list",
      "blockDescription": "list_of_products",
      "id": "5e387771-5b82-449e-a579-07990530df1c",
      "blockData": [
        {
          "listId": "675d2ecf-988f-4245-9cf8-dc78194b5aac",
          "54712b6e-fb8a-4055-9e2f-0ffe6bc58103": {
            "fieldName": "name",
            "fieldType": "text",
            "fieldDescription": "product_name",
            "id": "54712b6e-fb8a-4055-9e2f-0ffe6bc58103",
            "blockData": {
              "name": "Shoes"
            }
          },
          "68c993f2-7cbf-481d-b195-586250e310e3": {
            "fieldName": "description",
            "fieldType": "text",
            "fieldDescription": "product_description",
            "id": "68c993f2-7cbf-481d-b195-586250e310e3",
            "blockData": {
              "description": "A comfortable and stylish shoes"
            }
          },
          "2777273a-b58c-4cd9-919c-187d13c74acb": {
            "fieldName": "price",
            "fieldType": "text",
            "fieldDescription": "product_price",
            "id": "2777273a-b58c-4cd9-919c-187d13c74acb",
            "blockData": {
              "price": "ten thousand"
            }
          },
          "21650bb2-2577-4945-9688-c03ee2370afe": {
            "fieldName": "category",
            "fieldType": "text",
            "fieldDescription": "product_category",
            "id": "21650bb2-2577-4945-9688-c03ee2370afe",
            "blockData": {
              "category": "footwear"
            }
          },
          "5406e62e-ea82-49e4-aa78-f9726c23b493": {
            "fieldName": "image",
            "fieldType": "link",
            "fieldDescription": "product_image",
            "id": "5406e62e-ea82-49e4-aa78-f9726c23b493",
            "blockData": {
              "image": "https://res.cloudinary.com/dv6nhoywi/image/upload/v1691500832/cld-sample-5.jpg"
            }
          }
        },
        {
          "351636ba-ad37-488a-81cc-1cd5aa5254bd": {
            "fieldName": "name",
            "fieldType": "text",
            "fieldDescription": "product_name",
            "id": "351636ba-ad37-488a-81cc-1cd5aa5254bd",
            "blockData": {
              "name": "t-shirt"
            }
          },
          "b8bfcbd4-d804-49d1-a38d-af404ed5e226": {
            "fieldName": "description",
            "fieldType": "text",
            "fieldDescription": "product_description",
            "id": "b8bfcbd4-d804-49d1-a38d-af404ed5e226",
            "blockData": {
              "description": "A comfortable and stylish T-shirt"
            }
          },
          "bd1911c0-35a4-4509-bb9e-ee1fec01de5a": {
            "fieldName": "price",
            "fieldType": "text",
            "fieldDescription": "product_price",
            "id": "bd1911c0-35a4-4509-bb9e-ee1fec01de5a",
            "blockData": {
              "price": "Five thousand"
            }
          },
          "880fbd51-e643-4e21-b914-75a08e485ba2": {
            "fieldName": "category",
            "fieldType": "text",
            "fieldDescription": "product_category",
            "id": "880fbd51-e643-4e21-b914-75a08e485ba2",
            "blockData": {
              "category": "clothing"
            }
          },
          "86b5e236-d2e6-4e83-af37-1a3153d214bc": {
            "fieldName": "image",
            "fieldType": "link",
            "fieldDescription": "product_image",
            "id": "86b5e236-d2e6-4e83-af37-1a3153d214bc",
            "blockData": {
              "image": "https://res.cloudinary.com/dv6nhoywi/image/upload/v1691500826/samples/smile.jpg"
            }
          },
          "id": "3380f744-ecff-42f3-8c1b-18b662bf65f6",
          "listId": "59909e42-ff72-4f25-816d-6a41c0e0e7a0"
        }
      ],
      "nested": false
    }
  ],
  "updatedAt": "2023-08-09T05:12:38.769Z",
  "metadata": {
    "title": "homepage",
    "slug": "productdetails",
    "contentType": "products",
    "status": "draft"
  },
  "id": "64d320462aed52cfe16ddde7",
  "websiteId": "64d3200e2aed52cfe16ddddf"
}





## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
