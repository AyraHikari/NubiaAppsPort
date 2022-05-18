.class Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeekSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/WeekSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekSettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final COUNT:I = 0x7


# instance fields
.field public hasChecked:[Z

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/deskclock/ui/WeekSelectActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/WeekSelectActivity;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/WeekSelectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 115
    iput-object p2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->mData:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->hasChecked:[Z

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "i":I
    iget-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 119
    .local v1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->hasChecked:[Z

    const-string v2, "checked"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v4, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    goto :goto_0

    .line 122
    .end local v1    # "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->checkedChange(I)V

    return-void
.end method

.method private checkedChange(I)V
    .locals 2
    .param p1, "checkedID"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->hasChecked:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->hasChecked:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->hasChecked:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDayIndex()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 200
    new-array v1, v3, [Z

    .line 201
    .local v1, "mCount":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 202
    iget-object v2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->hasChecked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 203
    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 201
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 209
    :cond_1
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 146
    iget-object v1, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/WeekSelectActivity;

    .line 147
    .local v1, "context":Landroid/content/Context;
    const-string v4, "layout_inflater"

    .line 148
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 149
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 150
    .local v3, "vh":Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;
    move v0, p1

    .line 152
    .local v0, "checkedID":I
    if-nez p2, :cond_1

    .line 153
    new-instance v3, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;

    .end local v3    # "vh":Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;
    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;)V

    .line 154
    .restart local v3    # "vh":Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;
    const v4, 0x7f040072

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 155
    const v4, 0x7f120156

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 156
    const v4, 0x7f120157

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 157
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    :goto_0
    iget-object v5, v3, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "entry"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v4, v3, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, v3, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->hasChecked:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    iget-object v4, v3, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    new-instance v5, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$1;

    invoke-direct {v5, p0, v0}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$1;-><init>(Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    new-instance v4, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$2;

    invoke-direct {v4, p0, v0}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$2;-><init>(Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-object p2

    .line 159
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "vh":Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;
    check-cast v3, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;

    .restart local v3    # "vh":Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$ViewHolder;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method
