import { FC, useEffect } from 'react'
import { useNavbarContext } from '../../context/navbar.context'
import { useForm } from '../../hooks/useForm'
import { Email, ServiceList, Submit, Messages } from "../../interfaces";
import { convertToSlug } from "../../lib/utils";
import { Loader } from '../atoms'

interface FormProps {
    name: Email,
    phone: Email,
    email: Email,
    service: Email,
    message: Email,
    submit: Submit,
    messages: Messages,
    services: ServiceList[]
}


export const Form: FC<FormProps> = ({ name, phone, email, service, message, submit, services, messages }) => {
    const { formServiceValue } = useNavbarContext()
    const {
        failure,
        sending,
        errors,
        formState,
        responseMessage,
        validateInput,
        validateSelect,
        handleInput,
        handleSubmit,
        setFormState
    } = useForm(messages, submit.url)

    useEffect(() => {
        setFormState((prevState) => {
            return { ...prevState, service: formServiceValue }
        })
    }, [setFormState, formServiceValue])

    return (
        <form className="Form" onSubmit={handleSubmit}>
            {/* Names */}
            <div className="Text-Field">
                <input value={formState.name}
                    onInput={validateInput}
                    name={name.name}
                    id={name.name}
                    type="text"
                    placeholder={name.placeholder}
                    className="Text-Input"
                />
                {errors.name && <p className="Text-Error">{errors.name}</p>}
            </div>

            {/* Email */}
            <div className="Text-Field">
                <input value={formState.email}
                    onInput={validateInput}
                    name={email?.name}
                    id={email?.name}
                    type="email"
                    placeholder={email?.placeholder}
                    className="Text-Input"
                />
                {errors.email && <p className="Text-Error">{errors.email}</p>}
            </div>

            {/* Phone Number */}
            <div className="Text-Field">
                <input value={formState.phone}
                    onInput={validateInput}
                    name={phone.name}
                    id={phone.name}
                    type="text"
                    placeholder={phone.placeholder}
                    className="Text-Input"
                />
                {errors.phone && <p className="Text-Error">{errors.phone}</p>}
            </div>

            {/* Select Service */}
            <div className="Text-Field Select">
                <i className="icon-arrow-select"></i>
                <select value={formState.service}
                    name={service?.name}
                    onInput={validateSelect} id={service?.name}
                    className="Text-Input"
                >
                    <option value="" disabled>{service?.placeholder}</option>
                    {services.map(({ title }, i) => (
                        <option key={i} value={convertToSlug(title)}>
                            {title}
                        </option>
                    ))}
                </select>
                {/* <i className="icon-arrow-select"></i> */}
                {errors.service && <p className="Text-Error">{errors.service}</p>}
            </div>

            {/* Message */}
            <div className="Text-Field">
                <textarea
                    value={formState.message}
                    name={message.name}
                    onInput={handleInput}
                    id={message.name}
                    placeholder={message.placeholder}
                    className="Text-Textarea"
                ></textarea>
            </div>



            {/* Send */}
            <div className="Form-send">
                <button disabled={sending} className="Form-btn">
                    {submit.label}
                </button>
                {
                    sending && <Loader />
                }
            </div>

            {/* Response Message */}
            {responseMessage && <p className={`Form-response ${failure && 'failure'}`}>{responseMessage}</p>}
        </form >

    )
}
