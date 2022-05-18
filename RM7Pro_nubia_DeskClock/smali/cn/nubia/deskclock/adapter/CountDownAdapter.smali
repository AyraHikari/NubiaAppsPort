.class public Lcn/nubia/deskclock/adapter/CountDownAdapter;
.super Landroid/widget/BaseAdapter;
.source "CountDownAdapter.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CountDownAdapter"

.field public static mHomeCityId:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountDownList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/CountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveEqualCountItem:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsInActionMode:Z

.field private mSelection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/CountItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mHomeCityId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mHaveEqualCountItem:Z

    .line 43
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->loadCountdownToList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    .line 46
    return-void
.end method

.method private formatCountdown(Lcn/nubia/deskclock/model/CountItem;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "item"    # Lcn/nubia/deskclock/model/CountItem;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "cs":Ljava/lang/StringBuilder;
    iget v4, p1, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    div-int/lit16 v1, v4, 0xe10

    .line 146
    .local v1, "hour":I
    iget v4, p1, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x3c

    .line 147
    .local v2, "minutes":I
    iget v4, p1, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    rem-int/lit8 v3, v4, 0x3c

    .line 148
    .local v3, "seconds":I
    if-eqz v1, :cond_0

    .line 149
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c0000

    .line 152
    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 153
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 150
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    if-eqz v2, :cond_1

    .line 157
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0001

    .line 159
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 160
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 157
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    if-eqz v3, :cond_2

    .line 163
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    .line 165
    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 166
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 163
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private updateView(Landroid/view/View;Lcn/nubia/deskclock/model/CountItem;I)V
    .locals 8
    .param p1, "countdown"    # Landroid/view/View;
    .param p2, "Item"    # Lcn/nubia/deskclock/model/CountItem;
    .param p3, "position"    # I

    .prologue
    .line 90
    const-string v6, "CountDownAdapter"

    const-string v7, "updateView()"

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 93
    :cond_0
    const v6, 0x7f1200d5

    .line 94
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v5, v6

    check-cast v5, Landroid/widget/TextView;

    .line 96
    .local v5, "seconds":Landroid/widget/TextView;
    iget v6, p2, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    if-nez v6, :cond_1

    .line 97
    iget-object v6, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {v6}, Lcn/nubia/deskclock/database/CountDownSPUtils;->getCountdownSharedPrefereces(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 99
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 100
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "countdown_num"

    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->getCount()I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    invoke-virtual {p0, p2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->addDeletedCountdown(Lcn/nubia/deskclock/model/CountItem;)V

    .line 103
    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->confirmToDeleteSelection()V

    .line 104
    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 108
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-direct {p0, p2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->formatCountdown(Lcn/nubia/deskclock/model/CountItem;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-boolean v6, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mIsInActionMode:Z

    if-eqz v6, :cond_3

    .line 111
    const v6, 0x7f1200d6

    .line 112
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 113
    .local v1, "checkobx":Landroid/widget/CheckBox;
    const v6, 0x7f1200d8

    .line 114
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 115
    .local v0, "arrow":Landroid/widget/ImageView;
    const v6, 0x7f1200d7

    .line 116
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    .local v3, "latestTextView":Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 120
    iget-object v6, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 123
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 127
    .end local v0    # "arrow":Landroid/widget/ImageView;
    .end local v1    # "checkobx":Landroid/widget/CheckBox;
    .end local v3    # "latestTextView":Landroid/widget/TextView;
    :cond_3
    const v6, 0x7f1200d6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 129
    const v6, 0x7f1200d5

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    const v6, 0x7f1200d8

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 133
    if-nez p3, :cond_4

    .line 134
    const v6, 0x7f1200d7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 137
    :cond_4
    const v6, 0x7f1200d7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addCountdown(Lcn/nubia/deskclock/model/CountItem;)V
    .locals 7
    .param p1, "countdown"    # Lcn/nubia/deskclock/model/CountItem;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 211
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 212
    .local v1, "runtime":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 213
    const-string v2, "CountDownAdapter"

    const-string v3, " [addCountdown]"

    invoke-static {v2, v3, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 215
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/CountItem;

    iget v2, v2, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    iget v3, p1, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    if-ne v2, v3, :cond_2

    .line 216
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/CountItem;

    iget v2, v2, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    .line 217
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/CountItem;

    iget v2, v2, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 218
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    .line 219
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/CountItem;

    iget v2, v2, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    .line 218
    invoke-static {v3, v2, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 220
    iput-boolean v6, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mHaveEqualCountItem:Z

    .line 229
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mHaveEqualCountItem:Z

    if-eqz v2, :cond_3

    .line 230
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-static {v2, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->updateCountdownToPref(Landroid/content/Context;Ljava/util/List;)V

    .line 231
    iput-boolean v5, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mHaveEqualCountItem:Z

    .line 235
    :goto_2
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->loadCountdownToList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    .line 236
    const-string v2, "CountDownAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCountDownList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 222
    :cond_1
    const-string v3, "CountDownAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCountId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/CountItem;

    iget v2, v2, Lcn/nubia/deskclock/model/CountItem;->mCountId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  ;; mSecounds : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput-boolean v6, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mHaveEqualCountItem:Z

    goto :goto_1

    .line 214
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 233
    :cond_3
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountdownToPref(Landroid/content/Context;Lcn/nubia/deskclock/model/CountItem;)V

    goto :goto_2
.end method

.method public addDeletedCountdown(Lcn/nubia/deskclock/model/CountItem;)V
    .locals 1
    .param p1, "countItem"    # Lcn/nubia/deskclock/model/CountItem;

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public confirmToDeleteSelection()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/CountItem;

    .line 202
    .local v0, "item":Lcn/nubia/deskclock/model/CountItem;
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v0    # "item":Lcn/nubia/deskclock/model/CountItem;
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 207
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-static {v1, v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->updateCountdownToPref(Landroid/content/Context;Ljava/util/List;)V

    .line 208
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 71
    .local v0, "count":I
    :goto_0
    const-string v1, "CountDownAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCount: count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return v0

    .line 70
    .end local v0    # "count":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # I

    .prologue
    .line 77
    const-string v0, "CountDownAdapter"

    const-string v1, "getItem()"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/CountItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 84
    const-string v0, "CountDownAdapter"

    const-string v1, "getItemId()"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const-string v1, "CountDownAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    .line 52
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 58
    :cond_1
    if-eqz p2, :cond_2

    .line 59
    move-object v0, p2

    .line 64
    .local v0, "countdownInfo":Landroid/view/View;
    :goto_1
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/model/CountItem;

    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->updateView(Landroid/view/View;Lcn/nubia/deskclock/model/CountItem;I)V

    goto :goto_0

    .line 61
    .end local v0    # "countdownInfo":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "countdownInfo":Landroid/view/View;
    goto :goto_1
.end method

.method public isSelectAll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    if-nez v3, :cond_1

    move v0, v2

    .line 173
    .local v0, "allCount":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    if-nez v3, :cond_2

    move v1, v2

    .line 174
    .local v1, "selectCount":I
    :goto_1
    const-string v3, "CountDownAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Select count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", all:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 172
    .end local v0    # "allCount":I
    .end local v1    # "selectCount":I
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 173
    .restart local v0    # "allCount":I
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1
.end method

.method public reloadData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mIsInActionMode:Z

    if-nez v0, :cond_0

    .line 251
    invoke-static {p1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->loadCountdownToList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->notifyDataSetChanged()V

    .line 254
    return-void
.end method

.method public selectAll()V
    .locals 4

    .prologue
    .line 179
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/CountItem;>;"
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mCountDownList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/CountItem;

    .line 184
    .local v0, "item":Lcn/nubia/deskclock/model/CountItem;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v0    # "item":Lcn/nubia/deskclock/model/CountItem;
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/CountItem;>;"
    :cond_1
    return-void
.end method

.method public setInActionMode(Z)V
    .locals 0
    .param p1, "isInActionMode"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mIsInActionMode:Z

    .line 39
    return-void
.end method

.method public unSelectall()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/CountDownAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    :cond_0
    return-void
.end method
