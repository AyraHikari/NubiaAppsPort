.class Lcom/hpplay/sdk/source/service/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/e;->o()V
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
    .line 433
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$5;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$5;->a:Lcom/hpplay/sdk/source/service/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/e;->a(I)V

    .line 437
    return-void
.end method
