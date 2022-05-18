.class public Lcn/nubia/notepad/view/NotePadShareTextLayout;
.super Landroid/widget/LinearLayout;
.source "NotePadShareTextLayout.java"


# instance fields
.field private isSpanClick:Z

.field public mCheckbox:Landroid/widget/CheckBox;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mEditText:Landroid/widget/TextView;

.field public mModeLayout:Landroid/widget/LinearLayout;

.field private mNoteMode:I

.field public mNumberTextView:Landroid/widget/TextView;

.field private mQueryText:Ljava/lang/String;

.field public mShortLineTextView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field public misChecked:Z

.field private previousMovementMethod:Landroid/text/method/MovementMethod;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mToast:Landroid/widget/Toast;

    .line 82
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private clearEditTextThruLine()V
    .locals 4

    .prologue
    .line 221
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 222
    .local v0, "selectPosition":I
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 223
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 224
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method private setDefaultMode()V
    .locals 2

    .prologue
    const/high16 v1, 0x41600000    # 14.0f

    .line 137
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    return-void
.end method

.method private setEditTextThruLine()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 231
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 232
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method private setModeLayoutHeight()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 276
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 278
    .local v0, "end":I
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 280
    .local v2, "top":I
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 281
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNoteMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 282
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 285
    :cond_0
    invoke-virtual {v1, v5, v2, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 286
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    return-void
.end method

.method private setModeViewVisible(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->clearEditTextThruLine()V

    .line 144
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setDefaultMode()V

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setModeLayoutHeight()V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 158
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    goto :goto_0

    .line 180
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    .line 186
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setTitleMode()V

    goto/16 :goto_0

    .line 189
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setTitleMode()V

    .line 195
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setModeLayoutHeight()V

    goto/16 :goto_0

    .line 198
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 203
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    .line 204
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setTitleMode()V

    goto/16 :goto_0

    .line 207
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 212
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    .line 213
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setTitleMode()V

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private setTitleMode()V
    .locals 3

    .prologue
    const v2, 0x7f0e0091

    const/high16 v1, 0x41700000    # 15.0f

    .line 128
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 132
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 133
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 134
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    return v0
.end method

.method public getEditMode()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNoteMode:I

    return v0
.end method

.method public initView(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "queryText"    # Ljava/lang/String;
    .param p3, "isPreview"    # Z
    .param p4, "noteMode"    # I
    .param p5, "checked"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContent:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mQueryText:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f03003d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f007f

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0f007c

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    .line 96
    const v1, 0x7f0f003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    .line 97
    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0f007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0, p3}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setPreviewMode(Z)V

    .line 100
    iput p4, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNoteMode:I

    .line 101
    const-string v1, "1"

    invoke-static {p5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    .line 102
    invoke-virtual {p0, p4}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setEditMode(I)V

    .line 103
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->misChecked:Z

    .line 117
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContent:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setEditMode(I)V
    .locals 0
    .param p1, "noteMode"    # I

    .prologue
    .line 111
    iput p1, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNoteMode:I

    .line 112
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadShareTextLayout;->setModeViewVisible(I)V

    .line 113
    return-void
.end method

.method public setNumberModeNumberShow(I)V
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mNumberTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public setPreviewMode(Z)V
    .locals 10
    .param p1, "isPreview"    # Z

    .prologue
    const/4 v9, 0x0

    .line 242
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 243
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 244
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 245
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->clearFocus()V

    .line 246
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 249
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContent:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-static {v7, v8}, Lcn/nubia/notepad/reflect/NubiaTextView;->setNubiaText(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 250
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 251
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 252
    .local v1, "end":I
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 253
    .local v2, "sp":Landroid/text/Spannable;
    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {v2, v9, v1, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 254
    .local v6, "urls":[Landroid/text/style/URLSpan;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 255
    .local v4, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 256
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mQueryText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContent:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mQueryText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 257
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContent:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mQueryText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 258
    .local v3, "startIndex":I
    :goto_0
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 260
    :try_start_0
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0085

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v8, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mQueryText:Ljava/lang/String;

    .line 263
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    const/16 v9, 0x21

    .line 260
    invoke-virtual {v4, v7, v3, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 265
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mContent:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mQueryText:Ljava/lang/String;

    iget-object v9, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mQueryText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "startIndex":I
    :cond_0
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-static {v4, v7}, Lcn/nubia/notepad/reflect/NubiaTextView;->setNubiaText(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 272
    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->mEditText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/notepad/view/NotePadShareTextLayout;->previousMovementMethod:Landroid/text/method/MovementMethod;

    .line 273
    return-void
.end method
