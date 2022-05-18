.class Lcn/nubia/commonui/widget/NubiaSearchView$6;
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
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$6;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$6;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$900(Lcn/nubia/commonui/widget/NubiaSearchView;Ljava/lang/CharSequence;)V

    .line 814
    return-void
.end method
