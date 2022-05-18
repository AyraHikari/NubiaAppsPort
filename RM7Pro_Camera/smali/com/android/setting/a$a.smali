.class Lcom/android/setting/a$a;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setting/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Lcom/android/preference/ListPreference;

.field private j:Landroid/widget/TextView;

.field private final k:I

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/ListPreference;)V
    .locals 1

    .line 129
    sget v0, Lcom/android/setting/f$h;->b:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    .line 115
    iput-object p1, p0, Lcom/android/setting/a$a;->b:Landroid/widget/TextView;

    .line 116
    iput-object p1, p0, Lcom/android/setting/a$a;->c:Landroid/widget/TextView;

    .line 117
    iput-object p1, p0, Lcom/android/setting/a$a;->d:Landroid/widget/ImageView;

    .line 118
    iput-object p1, p0, Lcom/android/setting/a$a;->e:Landroid/widget/LinearLayout;

    .line 119
    iput-object p1, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/android/setting/a$a;->g:Landroid/view/View$OnClickListener;

    .line 121
    iput-object p1, p0, Lcom/android/setting/a$a;->h:Landroid/view/View$OnClickListener;

    .line 122
    iput-object p1, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    .line 123
    iput-object p1, p0, Lcom/android/setting/a$a;->j:Landroid/widget/TextView;

    const/16 p1, 0x19

    .line 125
    iput p1, p0, Lcom/android/setting/a$a;->k:I

    const-string p1, "InputTextDialog"

    .line 126
    iput-object p1, p0, Lcom/android/setting/a$a;->l:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    return-void
.end method

.method static synthetic a(Lcom/android/setting/a$a;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/setting/a$a;->g:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a()V
    .locals 8

    .line 147
    sget v0, Lcom/android/setting/f$e;->e:I

    invoke-virtual {p0, v0}, Lcom/android/setting/a$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/a$a;->b:Landroid/widget/TextView;

    .line 148
    new-instance v1, Lcom/android/setting/a$a$1;

    invoke-direct {v1, p0}, Lcom/android/setting/a$a$1;-><init>(Lcom/android/setting/a$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget v0, Lcom/android/setting/f$e;->c:I

    invoke-virtual {p0, v0}, Lcom/android/setting/a$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/a$a;->c:Landroid/widget/TextView;

    .line 160
    new-instance v1, Lcom/android/setting/a$a$2;

    invoke-direct {v1, p0}, Lcom/android/setting/a$a$2;-><init>(Lcom/android/setting/a$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    sget v0, Lcom/android/setting/f$e;->g:I

    invoke-virtual {p0, v0}, Lcom/android/setting/a$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    .line 170
    invoke-virtual {p0}, Lcom/android/setting/a$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/setting/f$b;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 171
    iget-object v0, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 172
    iget-object v0, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/setting/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setting/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_water_mark_custom_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    const-string v4, "pref_picture_artist_info"

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Lcom/android/setting/a$a$3;

    invoke-direct {v0, p0}, Lcom/android/setting/a$a$3;-><init>(Lcom/android/setting/a$a;)V

    .line 192
    iget-object v6, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 193
    iget-object v6, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v7, Lcom/android/setting/b;

    invoke-direct {v7, v1}, Lcom/android/setting/b;-><init>(I)V

    aput-object v7, v3, v2

    aput-object v0, v3, v5

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v3, v2

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 198
    :cond_3
    :goto_0
    sget v0, Lcom/android/setting/f$e;->A:I

    invoke-virtual {p0, v0}, Lcom/android/setting/a$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/a$a;->j:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v2

    .line 201
    iget-object v1, p0, Lcom/android/setting/a$a;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/android/setting/a$a;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_1
    sget v0, Lcom/android/setting/f$e;->B:I

    invoke-virtual {p0, v0}, Lcom/android/setting/a$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/setting/a$a;->e:Landroid/widget/LinearLayout;

    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    sget v0, Lcom/android/setting/f$e;->d:I

    invoke-virtual {p0, v0}, Lcom/android/setting/a$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/setting/a$a;->d:Landroid/widget/ImageView;

    .line 210
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/setting/a$a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/setting/a$a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 223
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/android/setting/a$a;)Landroid/widget/EditText;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic c(Lcom/android/setting/a$a;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/setting/a$a;->h:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/setting/a$a;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 252
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 253
    iget-object p1, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_water_mark_custom_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/setting/a$a;->i:Lcom/android/preference/ListPreference;

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/android/setting/a$a;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/android/setting/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 259
    iget-object p1, p0, Lcom/android/setting/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/setting/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setting/f$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object p1, p0, Lcom/android/setting/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/android/setting/a$a;->b:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 263
    iget-object p1, p0, Lcom/android/setting/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/setting/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setting/f$b;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/setting/a$a;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 269
    iget-object p1, p0, Lcom/android/setting/a$a;->a:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object p1, p0, Lcom/android/setting/a$a;->d:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/android/setting/a$a;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 272
    iget-object p1, p0, Lcom/android/setting/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/setting/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setting/f$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 136
    sget p1, Lcom/android/setting/f$f;->c:I

    invoke-virtual {p0, p1}, Lcom/android/setting/a$a;->setContentView(I)V

    .line 137
    invoke-direct {p0}, Lcom/android/setting/a$a;->a()V

    .line 139
    invoke-virtual {p0}, Lcom/android/setting/a$a;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 p1, -0x1

    .line 142
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 143
    sget p1, Lcom/android/setting/f$h;->a:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
