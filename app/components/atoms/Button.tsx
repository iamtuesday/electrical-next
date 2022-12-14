import { useRouter } from "next/router";
import React, { FC, ReactNode } from "react";
// interface to declare all our prop types
interface Props {
  children: ReactNode;
  onClick?: () => void;
  variant?: string; // default, primary, info, success, warning, danger, dark
  disabled?: boolean;
  iconType?: string;
}
// button component, consuming props
export const Button: FC<Props> = ({
  children,
  variant = "default",
  disabled,
  onClick,
  iconType = "",
  ...rest
}) => {
  return (
    <button
      className={`btn-${variant}` + (disabled ? " disabled" : "")}
      disabled={disabled}
      onClick={onClick}
      {...rest}
    >
      {children}
      {iconType && <span className={`icon-${iconType}`}></span>}
    </button>
  );
};
