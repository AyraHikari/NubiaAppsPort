.class Lcom/zte/mifavor/widget/VolumeView$1;
.super Landroid/os/Handler;
.source "VolumeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/VolumeView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/VolumeView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/VolumeView;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/zte/mifavor/widget/VolumeView$1;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/VolumeView$1;->this$0:Lcom/zte/mifavor/widget/VolumeView;

    invoke-static {p0}, Lcom/zte/mifavor/widget/VolumeView;->access$000(Lcom/zte/mifavor/widget/VolumeView;)V

    :goto_0
    return-void
.end method
