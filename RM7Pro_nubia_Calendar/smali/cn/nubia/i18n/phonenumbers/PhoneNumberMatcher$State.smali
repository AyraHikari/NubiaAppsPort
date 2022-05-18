.class final enum Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;
.super Ljava/lang/Enum;
.source "PhoneNumberMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum DONE:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum NOT_READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->$VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const-class v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    return-object v0
.end method

.method public static values()[Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->$VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    invoke-virtual {v0}, [Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/i18n/phonenumbers/PhoneNumberMatcher$State;

    return-object v0
.end method
