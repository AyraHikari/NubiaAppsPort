.class Lcn/nubia/commonui/widget/NubiaSearchView$7;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 816
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$7;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 828
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 820
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 824
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$7;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$1000(Lcn/nubia/commonui/widget/NubiaSearchView;Ljava/lang/CharSequence;)V

    .line 825
    return-void
.end method
