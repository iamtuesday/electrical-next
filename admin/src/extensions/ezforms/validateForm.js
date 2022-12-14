
const Joi = require("joi");

const schema = Joi.object({
    name: Joi.string()
        .min(3)
        .max(30)
        .required(),
    phone: Joi.string().required()
        .pattern(new RegExp(/^(1\s?)?(\d{3}|\(\d{3}\))[\s-]?\d{3}[\s-]?\d{4}$/))
        .messages({
            "string.pattern.base": "Invalid Phone Number",
        }),
    email: Joi.string().required()
        .pattern(new RegExp(/[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/))
        .messages({
            "string.pattern.base": "Invalid Email",
        }),
    service: Joi.string().required(),
    message: Joi.string().allow(null, '')
});

module.exports = { schema };


/*


const schema = Joi.object({
  name: Joi.string().required().min(3).label("Name"),
  phone: Joi.string().required().label("Phone")
    .pattern(new RegExp(/^(1\s?)?(\d{3}|\(\d{3}\))[\s-]?\d{3}[\s-]?\d{4}$/))
    .messages({
      "string.pattern.base": "Invalid Phone Number",
    }),
  email: Joi.string().required().label("Email")
    .pattern(new RegExp(/[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/))
    .messages({
      "string.pattern.base": "Invalid Email",
    }),
  service: Joi.string().required().label("Service").messages({
    'string.base': `"a" should be a type of 'text'`,
    'Service': `"a" cannot be an empty field`,
    'string.min': `"a" should have a minimum length of {#limit}`,
    'any.required': `"a" is a required field`
  }),
  message: Joi.string().allow(null, ''),

});

*/
