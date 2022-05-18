.class final enum Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;
.super Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcn/nubia/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .param p1, "number"    # Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "util"    # Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 455
    invoke-virtual {p3, p1}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-static {p1, p2, p3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$100(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :cond_0
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$200(Lcn/nubia/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    goto :goto_0
.end method
