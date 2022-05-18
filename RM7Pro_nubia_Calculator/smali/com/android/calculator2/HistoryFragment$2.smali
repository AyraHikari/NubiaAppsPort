.class Lcom/android/calculator2/HistoryFragment$2;
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

    .line 123
    iput-object p1, p0, Lcom/android/calculator2/HistoryFragment$2;->this$0:Lcom/android/calculator2/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "HistoryFragment"

    const-string v0, "Aaron: Click Delete History Button."

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/android/calculator2/HistoryFragment$2;->this$0:Lcom/android/calculator2/HistoryFragment;

    invoke-virtual {p1}, Lcom/android/calculator2/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/Calculator;

    .line 128
    iget-object v0, p0, Lcom/android/calculator2/HistoryFragment$2;->this$0:Lcom/android/calculator2/HistoryFragment;

    const v1, 0x7f11009e

    invoke-virtual {v0, v1}, Lcom/android/calculator2/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/HistoryFragment$2;->this$0:Lcom/android/calculator2/HistoryFragment;

    const v2, 0x7f110066

    .line 129
    invoke-virtual {v1, v2}, Lcom/android/calculator2/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/calculator2/HistoryFragment$2;->this$0:Lcom/android/calculator2/HistoryFragment;

    const v2, 0x7f110025

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/calculator2/HistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "clear"

    .line 128
    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/calculator2/AlertDialogFragment;->showMessageDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method
