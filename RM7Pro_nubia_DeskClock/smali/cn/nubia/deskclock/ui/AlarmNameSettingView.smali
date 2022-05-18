.class public Lcn/nubia/deskclock/ui/AlarmNameSettingView;
.super Landroid/widget/LinearLayout;
.source "AlarmNameSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;,
        Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;
    }
.end annotation


# instance fields
.field private final CHAR_MAX_NUM:I

.field private mAlarmName:Ljava/lang/String;

.field private mAlarmRepeatName:[Ljava/lang/String;

.field private mAlarmRepeatNameIndex:[I

.field private mCloseImageView:Landroid/widget/ImageView;

.field private mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mTextView:Landroid/widget/TextView;

.field private mTextviewAlarmName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->CHAR_MAX_NUM:I

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmRepeatNameIndex:[I

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->initView(Landroid/content/Context;)V

    .line 48
    return-void

    .line 41
    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->CHAR_MAX_NUM:I

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmRepeatNameIndex:[I

    .line 57
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->initView(Landroid/content/Context;)V

    .line 58
    return-void

    .line 41
    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->CHAR_MAX_NUM:I

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmRepeatNameIndex:[I

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->initView(Landroid/content/Context;)V

    .line 53
    return-void

    .line 41
    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;
    .param p1, "x1"    # Lcn/nubia/commonui/app/AlertDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;
    .param p1, "x1"    # Lcn/nubia/commonui/app/AlertDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->createAlarmCustomNameDialog()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)[I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmRepeatNameIndex:[I

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCloseImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createAlarmCustomNameDialog()Lcn/nubia/commonui/app/AlertDialog;
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 102
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 104
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 106
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040020

    invoke-virtual {v3, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 107
    .local v4, "layout":Landroid/view/View;
    invoke-virtual {v1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 108
    const v6, 0x7f120089

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    .line 109
    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmRepeatNameIndex:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    if-ne v6, v9, :cond_1

    .line 110
    const-string v0, ""

    .line 111
    .local v0, "alarmName":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "isCustomLabel:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "isCustomLabel:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 122
    .end local v0    # "alarmName":Ljava/lang/String;
    :goto_1
    const v6, 0x7f12008a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextView:Landroid/widget/TextView;

    .line 123
    const v6, 0x7f12008b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCloseImageView:Landroid/widget/ImageView;

    .line 124
    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCloseImageView:Landroid/widget/ImageView;

    new-instance v7, Lcn/nubia/deskclock/ui/AlarmNameSettingView$1;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$1;-><init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    new-instance v7, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;

    invoke-direct {v7, p0, v11}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;-><init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Lcn/nubia/deskclock/ui/AlarmNameSettingView$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    new-array v7, v9, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0x32

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 136
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->showTextCount()V

    .line 137
    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 143
    const v6, 0x104000a

    new-instance v7, Lcn/nubia/deskclock/ui/AlarmNameSettingView$2;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$2;-><init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)V

    invoke-virtual {v1, v6, v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 151
    const/high16 v6, 0x1040000

    invoke-virtual {v1, v6, v11}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    .line 153
    .local v5, "mAlertDialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 155
    return-object v5

    .line 114
    .end local v5    # "mAlertDialog":Lcn/nubia/commonui/app/AlertDialog;
    .restart local v0    # "alarmName":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 119
    .end local v0    # "alarmName":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0d0054

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private createAlarmTypeDialog()Lcn/nubia/commonui/app/AlertDialog;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 87
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 88
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const-string v6, "layout_inflater"

    .line 90
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 91
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040039

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 92
    .local v3, "dialogView":Landroid/view/View;
    const v6, 0x7f1200e9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 93
    .local v5, "lv":Landroid/widget/ListView;
    new-instance v0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmRepeatName:[Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmRepeatNameIndex:[I

    invoke-direct {p0, v6, v7}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getListItems([Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;-><init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Ljava/util/ArrayList;)V

    .line 95
    .local v0, "adapter":Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    invoke-virtual {v1, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 97
    const/high16 v6, 0x1040000

    invoke-virtual {v1, v6, v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method

.method private getListItems([Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "entries"    # [Ljava/lang/CharSequence;
    .param p2, "index1"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x1

    .line 224
    .local v1, "isCustom":Z
    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "mCurrentLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_1

    .line 227
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "entry"

    aget-object v6, p1, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    aget-object v5, p1, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    const-string v5, "checked"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const/4 v1, 0x0

    .line 235
    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    const-string v5, "checked"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 237
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    if-ne v1, v7, :cond_2

    .line 238
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 239
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "entry"

    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p1, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v5, "checked"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-object v2
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v1, "layout_inflater"

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040021

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    const v1, 0x7f12008e

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmRepeatName:[Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method private showTextCount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 419
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCloseImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlarmName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getTextviewAlarmNameTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "tmpLabel":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "isCustomLabel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCustomLabel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .end local v0    # "tmpLabel":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 197
    .restart local v0    # "tmpLabel":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 200
    .end local v0    # "tmpLabel":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextviewAlarmNameTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 73
    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/deskclock/util/Utils;->isAlarmKlaxonRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 80
    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 82
    :cond_2
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->createAlarmTypeDialog()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 83
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 207
    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 209
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 211
    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mCustomDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 213
    :cond_1
    return-void
.end method

.method public setAlarmName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "isCustomLabel"    # Z

    .prologue
    .line 159
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    .line 160
    if-eqz p2, :cond_3

    .line 161
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    const-string v1, "isCustomLabel"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    const-string v1, "isCustomLabel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    const-string v2, "isCustomLabel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mAlarmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    const-string v1, "isCustomLabel"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isCustomLabel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isCustomLabel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_4
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_5
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->mTextviewAlarmName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
