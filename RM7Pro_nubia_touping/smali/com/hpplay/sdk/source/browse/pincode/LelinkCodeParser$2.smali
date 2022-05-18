.class Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$2;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 145
    if-eqz p2, :cond_0

    .line 146
    check-cast p2, Ljava/util/List;

    .line 147
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 148
    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser$2;->a:Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;->a(Lcom/hpplay/sdk/source/browse/pincode/LelinkCodeParser;ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 150
    :cond_0
    return-void
.end method
