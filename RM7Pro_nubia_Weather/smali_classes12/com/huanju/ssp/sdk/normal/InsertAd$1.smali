.class Lcom/huanju/ssp/sdk/normal/InsertAd$1;
.super Ljava/lang/Object;
.source "InsertAd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/InsertAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/InsertAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/InsertAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/InsertAd;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 39
    const-string v0, "InsertAd adDialog onDismiss "

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/InsertAd;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/InsertAd;->access$000(Lcom/huanju/ssp/sdk/normal/InsertAd;I)V

    .line 41
    return-void
.end method
