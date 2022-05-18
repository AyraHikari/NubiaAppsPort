.class abstract enum Lcom/zte/statistics/sdk/update/AppDescriptionKey;
.super Ljava/lang/Enum;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/statistics/sdk/update/AppDescriptionKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/statistics/sdk/update/AppDescriptionKey;

.field public static final enum APPNAME:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

.field public static final enum COUNTRY:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

.field public static final enum DEVICE:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

.field public static final enum OPERATOR:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

.field public static final READ_DEVICE:Ljava/lang/String; = "***"

.field public static final enum VERSIONNAME:Lcom/zte/statistics/sdk/update/AppDescriptionKey;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey$1;

    const-string v1, "APPNAME"

    const-string v2, "appName"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/statistics/sdk/update/AppDescriptionKey$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->APPNAME:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    .line 16
    new-instance v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey$2;

    const-string v1, "COUNTRY"

    const-string v2, "country"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/statistics/sdk/update/AppDescriptionKey$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->COUNTRY:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    .line 23
    new-instance v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey$3;

    const-string v1, "OPERATOR"

    const-string v2, "operator"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/statistics/sdk/update/AppDescriptionKey$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->OPERATOR:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    .line 30
    new-instance v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey$4;

    const-string v1, "VERSIONNAME"

    const-string v2, "versionName"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/statistics/sdk/update/AppDescriptionKey$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->VERSIONNAME:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    .line 36
    new-instance v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey$5;

    const-string v1, "DEVICE"

    const-string v2, "device"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/statistics/sdk/update/AppDescriptionKey$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->DEVICE:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    const/4 v0, 0x5

    .line 8
    new-array v0, v0, [Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    sget-object v1, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->APPNAME:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->COUNTRY:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->OPERATOR:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->VERSIONNAME:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->DEVICE:Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    aput-object v1, v0, v7

    sput-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->$VALUES:[Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/statistics/sdk/update/AppDescriptionKey$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/update/AppDescriptionKey;
    .locals 1

    .line 8
    const-class v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    return-object p0
.end method

.method public static values()[Lcom/zte/statistics/sdk/update/AppDescriptionKey;
    .locals 1

    .line 8
    sget-object v0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->$VALUES:[Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    invoke-virtual {v0}, [Lcom/zte/statistics/sdk/update/AppDescriptionKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/statistics/sdk/update/AppDescriptionKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->key:Ljava/lang/String;

    return-object p0
.end method

.method public put2JSONObject(Lcom/zte/statistics/sdk/update/ZTEJSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "***"

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->putVaulefromDevice(Lcom/zte/statistics/sdk/update/ZTEJSONObject;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/zte/statistics/sdk/update/AppDescriptionKey;->key:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract putVaulefromDevice(Lcom/zte/statistics/sdk/update/ZTEJSONObject;)V
.end method
