.class public final Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mLayoutResource:I

    .line 54
    sget-object v0, Lcn/nubia/commonui/R$styleable;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    sget v1, Lcn/nubia/commonui/R$styleable;->ViewStubCompat_android_inflatedId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflatedId:I

    .line 58
    sget v1, Lcn/nubia/commonui/R$styleable;->ViewStubCompat_android_layout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mLayoutResource:I

    .line 60
    sget v1, Lcn/nubia/commonui/R$styleable;->ViewStubCompat_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->setId(I)V

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->setVisibility(I)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->setWillNotDraw(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 193
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mLayoutResource:I

    if-eqz v1, :cond_4

    .line 194
    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 201
    :goto_0
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mLayoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 204
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflatedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 205
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflatedId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 208
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 209
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 211
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_3

    .line 213
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 220
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflateListener:Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat$OnInflateListener;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflateListener:Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat$OnInflateListener;

    invoke-interface {v0, p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat$OnInflateListener;->onInflate(Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;Landroid/view/View;)V

    .line 224
    :cond_1
    return-object v1

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 226
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ViewStub must have a valid layoutResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->setMeasuredDimension(II)V

    .line 145
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflatedId:I

    .line 93
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 133
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mLayoutResource:I

    .line 125
    return-void
.end method

.method public setOnInflateListener(Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat$OnInflateListener;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflateListener:Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat$OnInflateListener;

    .line 243
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setVisibility called on un-referenced view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->inflate()Landroid/view/View;

    goto :goto_0
.end method
