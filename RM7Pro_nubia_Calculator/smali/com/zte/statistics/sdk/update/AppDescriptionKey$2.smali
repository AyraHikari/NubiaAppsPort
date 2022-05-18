.class final enum Lcom/zte/statistics/sdk/update/AppDescriptionKey$2;
.super Lcom/zte/statistics/sdk/update/AppDescriptionKey;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/update/AppDescriptionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/statistics/sdk/update/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/statistics/sdk/update/AppDescriptionKey$1;)V

    return-void
.end method


# virtual methods
.method public putVaulefromDevice(Lcom/zte/statistics/sdk/update/ZTEJSONObject;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/update/AppDescriptionKey$2;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GENERIC"

    invoke-virtual {p1, p0, v0}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
