.class public final enum Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum FIXED_LINE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum FIXED_LINE_OR_MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PAGER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PERSONAL_NUMBER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PREMIUM_RATE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum SHARED_COST:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum TOLL_FREE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum UAN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum UNKNOWN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum VOICEMAIL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum VOIP:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 381
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "FIXED_LINE"

    invoke-direct {v0, v1, v3}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 382
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v4}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 385
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "FIXED_LINE_OR_MOBILE"

    invoke-direct {v0, v1, v5}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 387
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "TOLL_FREE"

    invoke-direct {v0, v1, v6}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 388
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "PREMIUM_RATE"

    invoke-direct {v0, v1, v7}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 392
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "SHARED_COST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 394
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "VOIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 398
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "PERSONAL_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 399
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "PAGER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 402
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "UAN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 404
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "VOICEMAIL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 407
    new-instance v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 380
    const/16 v0, 0xc

    new-array v0, v0, [Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

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
    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 380
    const-class v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$VALUES:[Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v0}, [Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0
.end method
