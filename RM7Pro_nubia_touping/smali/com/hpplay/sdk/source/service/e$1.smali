.class Lcom/hpplay/sdk/source/service/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/e;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/e;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$1;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    const-string v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$1;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->a(Lcom/hpplay/sdk/source/service/e;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$1;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->b(Lcom/hpplay/sdk/source/service/e;)V

    goto :goto_0
.end method
