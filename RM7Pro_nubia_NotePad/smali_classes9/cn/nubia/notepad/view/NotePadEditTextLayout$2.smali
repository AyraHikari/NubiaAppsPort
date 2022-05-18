.class Lcn/nubia/notepad/view/NotePadEditTextLayout$2;
.super Ljava/lang/Object;
.source "NotePadEditTextLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NotePadEditTextLayout;->createOptionMenu(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout;

.field final synthetic val$itemValues:Ljava/util/List;

.field final synthetic val$mCalendarTime:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadEditTextLayout;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .prologue
    .line 704
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;->val$itemValues:Ljava/util/List;

    iput-object p3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;->val$mCalendarTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 707
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;->val$itemValues:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 708
    .local v0, "itemId":I
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;->val$mCalendarTime:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->access$600(Lcn/nubia/notepad/view/NotePadEditTextLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 710
    return-void
.end method
