.class final Lcn/nubia/toolbar/TopBarTitleLayout$1;
.super Ljava/lang/Object;
.source "TopBarTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$customimage:Landroid/widget/ImageView;

.field final synthetic val$navigationicon:Landroid/widget/ImageView;

.field final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$title:Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$navigationicon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$customimage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto/16 :goto_2

    .line 200
    :cond_0
    iget-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$title:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_2

    iget-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$navigationicon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    iget-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$customimage:Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 209
    iget-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$customimage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 201
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$title:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 202
    iget-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06008b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    :cond_3
    iget-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$navigationicon:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 187
    :cond_4
    iget-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$title:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x3e99999a    # 0.3f

    if-nez p2, :cond_6

    iget-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$navigationicon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 195
    :cond_5
    iget-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$customimage:Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 196
    iget-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$customimage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 188
    :cond_6
    :goto_1
    iget-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$title:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 189
    iget-object p2, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06008d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    :cond_7
    iget-object p1, p0, Lcn/nubia/toolbar/TopBarTitleLayout$1;->val$navigationicon:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 193
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_8
    :goto_2
    const/4 p1, 0x0

    return p1
.end method
