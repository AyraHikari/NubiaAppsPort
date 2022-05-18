.class Lcom/zte/mifavor/widget/LoadingToast$1;
.super Ljava/lang/Object;
.source "LoadingToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/LoadingToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/LoadingToast;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/LoadingToast;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zte/mifavor/widget/LoadingToast$1;->this$0:Lcom/zte/mifavor/widget/LoadingToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/mifavor/widget/LoadingToast$1;->this$0:Lcom/zte/mifavor/widget/LoadingToast;

    invoke-static {p0}, Lcom/zte/mifavor/widget/LoadingToast;->access$000(Lcom/zte/mifavor/widget/LoadingToast;)V

    return-void
.end method
