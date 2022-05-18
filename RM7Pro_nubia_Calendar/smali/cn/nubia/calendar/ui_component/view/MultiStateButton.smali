.class public Lcn/nubia/calendar/ui_component/view/MultiStateButton;
.super Landroid/widget/Button;
.source "MultiStateButton.java"


# instance fields
.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mButtonResources:[I

.field private mMaxStates:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mMaxStates:I

    .line 71
    iput v2, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    .line 73
    new-array v0, v0, [I

    const v1, 0x7f0202df

    aput v1, v0, v2

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResources:[I

    .line 74
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->setButtonDrawable(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 175
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getGravity()I

    move-result v6

    and-int/lit8 v2, v6, 0x70

    .line 177
    .local v2, "verticalGravity":I
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getGravity()I

    move-result v6

    and-int/lit8 v1, v6, 0x7

    .line 179
    .local v1, "horizontalGravity":I
    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 180
    .local v0, "height":I
    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 182
    .local v3, "width":I
    const/4 v5, 0x0

    .line 183
    .local v5, "y":I
    const/4 v4, 0x0

    .line 185
    .local v4, "x":I
    sparse-switch v2, :sswitch_data_0

    .line 193
    :goto_0
    sparse-switch v1, :sswitch_data_1

    .line 202
    :goto_1
    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    add-int v7, v4, v3

    add-int v8, v5, v0

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 203
    iget-object v6, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 205
    .end local v0    # "height":I
    .end local v1    # "horizontalGravity":I
    .end local v2    # "verticalGravity":I
    .end local v3    # "width":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    return-void

    .line 187
    .restart local v0    # "height":I
    .restart local v1    # "horizontalGravity":I
    .restart local v2    # "verticalGravity":I
    .restart local v3    # "width":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getHeight()I

    move-result v6

    sub-int v5, v6, v0

    .line 188
    goto :goto_0

    .line 190
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    goto :goto_0

    .line 195
    :sswitch_2
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getWidth()I

    move-result v6

    sub-int v4, v6, v3

    .line 196
    goto :goto_1

    .line 198
    :sswitch_3
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    goto :goto_1

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 193
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->transitionState()V

    .line 81
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 135
    if-eqz p1, :cond_0

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResource:I

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 162
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 163
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 165
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->setMinHeight(I)V

    .line 166
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->setWidth(I)V

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->refreshDrawableState()V

    .line 169
    return-void

    :cond_2
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public setButtonResources([I)V
    .locals 2
    .param p1, "resources"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button resources cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mMaxStates:I

    .line 103
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mMaxStates:I

    if-lt v0, v1, :cond_1

    .line 104
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mMaxStates:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    .line 106
    :cond_1
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResources:[I

    .line 107
    return-void
.end method

.method public setState(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 113
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mMaxStates:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    .line 120
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->setButtonDrawable(I)V

    .line 121
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transitionState()V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mMaxStates:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mButtonResources:[I

    iget v1, p0, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->mState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/ui_component/view/MultiStateButton;->setButtonDrawable(I)V

    .line 87
    return-void
.end method
