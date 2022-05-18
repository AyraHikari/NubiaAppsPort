.class final Lcom/huanju/ssp/sdk/AdManager$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/AdManager;->init(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/huanju/ssp/sdk/AdManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/huanju/ssp/sdk/AdManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/AdManager;->access$000(Landroid/content/Context;)V

    .line 139
    return-void
.end method
