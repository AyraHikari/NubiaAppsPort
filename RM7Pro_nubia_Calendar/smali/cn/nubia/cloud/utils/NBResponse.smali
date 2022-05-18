.class public Lcn/nubia/cloud/utils/NBResponse;
.super Lcn/nubia/cloud/utils/ParcelableJson;
.source "NBResponse.java"


# static fields
.field public static final CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
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

    .prologue
    .line 35
    new-instance v0, Lcn/nubia/cloud/utils/NBResponse$1;

    invoke-direct {v0}, Lcn/nubia/cloud/utils/NBResponse$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/utils/NBResponse;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    .line 13
    iput p1, p0, Lcn/nubia/cloud/utils/NBResponse;->mCode:I

    .line 14
    iput-object p2, p0, Lcn/nubia/cloud/utils/NBResponse;->mMessage:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/utils/NBResponse;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/utils/NBResponse;->mCode:I

    .line 20
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/utils/NBResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/utils/NBResponse;->mMessage:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcn/nubia/cloud/utils/NBResponse;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/cloud/utils/NBResponse;->mCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
