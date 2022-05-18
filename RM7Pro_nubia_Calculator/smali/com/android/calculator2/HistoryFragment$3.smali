.class Lcom/android/calculator2/HistoryFragment$3;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/HistoryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/android/calculator2/HistoryFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/calculator2/HistoryFragment$3;->this$0:Lcom/android/calculator2/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/android/calculator2/HistoryFragment$3;->this$0:Lcom/android/calculator2/HistoryFragment;

    invoke-static {p1}, Lcom/android/calculator2/HistoryFragment;->access$000(Lcom/android/calculator2/HistoryFragment;)Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/calculator2/HistoryFragment$ClickBackArrowButtonCallback;->onClickBackArrowButton()V

    .line 139
    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment$3;->this$0:Lcom/android/calculator2/HistoryFragment;

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
