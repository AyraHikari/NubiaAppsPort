.class public Lcom/huanju/ssp/base/core/view/DownloadDialog;
.super Landroid/app/AlertDialog;
.source "DownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;,
        Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;
    }
.end annotation


# instance fields
.field private edtTv:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;

.field private messageStr:Ljava/lang/String;

.field private messageTv:Landroid/widget/TextView;

.field private no:Landroid/widget/Button;

.field private noOnclickListener:Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;

.field private noStr:Ljava/lang/String;

.field private titleStr:Ljava/lang/String;

.field private titleTv:Landroid/widget/TextView;

.field private yes:Landroid/widget/Button;

.field private yesOnclickListener:Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;

.field private yesStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const v0, 0x1030132

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 68
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/view/DownloadDialog;)Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/DownloadDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yesOnclickListener:Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/view/DownloadDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/DownloadDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/view/DownloadDialog;)Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/DownloadDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->noOnclickListener:Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;

    return-object v0
.end method

.method private creatContentView()Landroid/view/View;
    .locals 28

    .prologue
    .line 154
    const/high16 v25, 0x42200000    # 40.0f

    invoke-static/range {v25 .. v25}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v8

    .line 155
    .local v8, "dp40":I
    const/high16 v25, 0x41a00000    # 20.0f

    invoke-static/range {v25 .. v25}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v7

    .line 156
    .local v7, "dp20":I
    const/high16 v25, 0x41700000    # 15.0f

    invoke-static/range {v25 .. v25}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v6

    .line 157
    .local v6, "dp15":I
    const/high16 v25, 0x41200000    # 10.0f

    invoke-static/range {v25 .. v25}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v5

    .line 158
    .local v5, "dp10":I
    const/high16 v25, 0x40a00000    # 5.0f

    invoke-static/range {v25 .. v25}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v9

    .line 160
    .local v9, "dp5":I
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v20, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v16, "ll":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 165
    const/16 v25, -0x2

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 166
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/DownloadDialog;->titleTv:Landroid/widget/TextView;

    .line 171
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v23, "tvTitleParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v7, v5, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->titleTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, "\u4e0b\u8f7d\u63d0\u793a"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->titleTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->titleTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/high16 v26, -0x1000000

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->titleTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const/high16 v27, 0x41900000    # 18.0f

    invoke-virtual/range {v25 .. v27}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 179
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    .local v11, "line":Landroid/view/View;
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 181
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 182
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const v25, -0xbbbbbc

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    .local v19, "llContent":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v4, "contentLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/DownloadDialog;->messageTv:Landroid/widget/TextView;

    .line 191
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, 0x0

    const/16 v26, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v22, "tvMsgLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 193
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->messageTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, "\u6587\u4ef6\u540d\u79f0:"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->messageTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->messageTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const v26, -0x777778

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->messageTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const/high16 v27, 0x41800000    # 16.0f

    invoke-virtual/range {v25 .. v27}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    new-instance v25, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    .line 199
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, 0x0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v10, "edtMsgLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v25, 0x40400000    # 3.0f

    move/from16 v0, v25

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 201
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v9, v6, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mMessage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mMessage:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    move-object/from16 v25, v0

    const v26, -0x777778

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setTextColor(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    move-object/from16 v25, v0

    const/16 v26, 0x7

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const/high16 v27, 0x41800000    # 16.0f

    invoke-virtual/range {v25 .. v27}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->messageTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->edtTv:Landroid/widget/EditText;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v14, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 215
    .local v14, "line2":Landroid/view/View;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v15, "line2Lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v15, v0, v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const v25, -0xbbbbbc

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 221
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 222
    .local v17, "llBtn":Landroid/widget/LinearLayout;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-direct {v0, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v18, "llBtnLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v25, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yes:Landroid/widget/Button;

    .line 226
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-direct/range {v24 .. v26}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v24, "yesBtnLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yes:Landroid/widget/Button;

    move-object/from16 v25, v0

    const-string v26, "\u786e\u5b9a"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yes:Landroid/widget/Button;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yes:Landroid/widget/Button;

    move-object/from16 v25, v0

    const-string v26, "#38ADFF"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setTextColor(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yes:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const/high16 v27, 0x41900000    # 18.0f

    invoke-virtual/range {v25 .. v27}, Landroid/widget/Button;->setTextSize(IF)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yes:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 233
    new-instance v25, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    .line 234
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, 0x0

    const/16 v26, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v21, "noBtnLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    move-object/from16 v25, v0

    const-string v26, "\u53d6\u6d88"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    move-object/from16 v25, v0

    const-string v26, "#7D7D7D"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setTextColor(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const/high16 v27, 0x41900000    # 18.0f

    invoke-virtual/range {v25 .. v27}, Landroid/widget/Button;->setTextSize(IF)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/huanju/ssp/base/core/view/DownloadDialog$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/view/DownloadDialog$3;-><init>(Lcom/huanju/ssp/base/core/view/DownloadDialog;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 248
    .local v12, "line1":Landroid/view/View;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, 0x1

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v13, "line1Lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const v25, -0xbbbbbc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yes:Landroid/widget/Button;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->titleTv:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    return-object v16
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yes:Landroid/widget/Button;

    new-instance v1, Lcom/huanju/ssp/base/core/view/DownloadDialog$1;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/core/view/DownloadDialog$1;-><init>(Lcom/huanju/ssp/base/core/view/DownloadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->no:Landroid/widget/Button;

    new-instance v1, Lcom/huanju/ssp/base/core/view/DownloadDialog$2;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/core/view/DownloadDialog$2;-><init>(Lcom/huanju/ssp/base/core/view/DownloadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->creatContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/DownloadDialog;->initEvent()V

    .line 77
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->mMessage:Ljava/lang/String;

    .line 136
    :cond_0
    return-void
.end method

.method public setNoOnclickListener(Ljava/lang/String;Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "onNoOnclickListener"    # Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->noStr:Ljava/lang/String;

    .line 50
    :cond_0
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->noOnclickListener:Lcom/huanju/ssp/base/core/view/DownloadDialog$NoOnclickListener;

    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->titleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setYesOnclickListener(Ljava/lang/String;Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "onYesOnclickListener"    # Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yesStr:Ljava/lang/String;

    .line 63
    :cond_0
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/DownloadDialog;->yesOnclickListener:Lcom/huanju/ssp/base/core/view/DownloadDialog$YesOnclickListener;

    .line 64
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 83
    return-void
.end method
