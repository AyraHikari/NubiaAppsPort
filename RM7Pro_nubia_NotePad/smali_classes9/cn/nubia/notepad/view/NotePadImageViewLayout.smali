.class public Lcn/nubia/notepad/view/NotePadImageViewLayout;
.super Landroid/widget/LinearLayout;
.source "NotePadImageViewLayout.java"


# instance fields
.field private mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

.field private mContext:Landroid/content/Context;

.field public mEditTextCursor:Landroid/widget/EditText;

.field public mImageView:Landroid/widget/ImageView;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public initView()Landroid/view/View;
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/notepad/view/NotePadImageViewLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mView:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mView:Landroid/view/View;

    const v1, 0x7f0f0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mImageView:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mView:Landroid/view/View;

    const v1, 0x7f0f0082

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mEditTextCursor:Landroid/widget/EditText;

    .line 30
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mView:Landroid/view/View;

    return-object v0
.end method
