.class public Lcn/nubia/cloud/utils/NBResponse;
.super Lcn/nubia/cloud/utils/ParcelableJson;
.source "NBResponse.java"


# static fields
.field public static final CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator<",
            "Lcn/nubia/cloud/utils/NBResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private mCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcn/nubia/cloud/utils/NBResponse$1;

    invoke-direct {v0}, Lcn/nubia/cloud/utils/NBResponse$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/utils/NBResponse;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    .line 13
    iput p1, p0, Lcn/nubia/cloud/utils/NBResponse;->mCode:I

    .line 14
    iput-object p2, p0, Lcn/nubia/cloud/utils/NBResponse;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 19
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/NBResponse;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/cloud/utils/NBResponse;->mCode:I

    const-string p1, "message"

    .line 20
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/NBResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/utils/NBResponse;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcn/nubia/cloud/utils/NBResponse;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 1

    .line 32
    iget v0, p0, Lcn/nubia/cloud/utils/NBResponse;->mCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
