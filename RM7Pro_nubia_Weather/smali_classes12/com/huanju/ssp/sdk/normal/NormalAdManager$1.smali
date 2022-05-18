.class final Lcom/huanju/ssp/sdk/normal/NormalAdManager$1;
.super Ljava/lang/Object;
.source "NormalAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NormalAdManager;->loopActivity(Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NormalAdManager$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NormalAdManager$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NormalAdManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NormalAdManager$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NormalAdManager$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 179
    :cond_0
    return-void
.end method
