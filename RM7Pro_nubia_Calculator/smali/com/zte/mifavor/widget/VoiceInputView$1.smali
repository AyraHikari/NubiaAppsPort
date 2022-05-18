.class Lcom/zte/mifavor/widget/VoiceInputView$1;
.super Landroid/os/Handler;
.source "VoiceInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/VoiceInputView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/VoiceInputView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/VoiceInputView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/zte/mifavor/widget/VoiceInputView$1;->this$0:Lcom/zte/mifavor/widget/VoiceInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/VoiceInputView$1;->this$0:Lcom/zte/mifavor/widget/VoiceInputView;

    invoke-static {p0}, Lcom/zte/mifavor/widget/VoiceInputView;->access$000(Lcom/zte/mifavor/widget/VoiceInputView;)V

    :goto_0
    return-void
.end method
