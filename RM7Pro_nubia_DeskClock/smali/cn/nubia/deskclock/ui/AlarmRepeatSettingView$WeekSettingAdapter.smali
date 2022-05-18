.class Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlarmRepeatSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekSettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final COUNT:I = 0x7


# instance fields
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

.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

.field public weekCheckedResult:[Z


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Ljava/util/ArrayList;)V
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
    .line 230
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 231
    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->mData:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->weekCheckedResult:[Z

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "i":I
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 235
    .local v1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->weekCheckedResult:[Z

    const-string v2, "checked"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v4, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 237
    goto :goto_0

    .line 238
    .end local v1    # "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->checkedChange(I)V

    return-void
.end method

.method private checkedChange(I)V
    .locals 2
    .param p1, "checkedID"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->weekCheckedResult:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->weekCheckedResult:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->weekCheckedResult:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 257
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDayIndex()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 316
    new-array v1, v3, [Z

    .line 317
    .local v1, "mCount":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 318
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->weekCheckedResult:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 319
    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 317
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 325
    :cond_1
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 262
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 263
    .local v1, "context":Landroid/content/Context;
    const-string v4, "layout_inflater"

    .line 264
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 265
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 266
    .local v3, "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;
    move v0, p1

    .line 268
    .local v0, "checkedID":I
    if-nez p2, :cond_1

    .line 269
    new-instance v3, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;

    .end local v3    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;
    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;)V

    .line 270
    .restart local v3    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;
    const v4, 0x7f040072

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 271
    const v4, 0x7f120156

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;->mRepeatOptions:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f120157

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 273
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 278
    :goto_0
    iget-object v5, v3, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;->mRepeatOptions:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "entry"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v4, v3, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, v3, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->weekCheckedResult:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    iget-object v4, v3, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$1;

    invoke-direct {v5, p0, v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$1;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    :cond_0
    new-instance v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$2;

    invoke-direct {v4, p0, v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$2;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-object p2

    .line 275
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;
    check-cast v3, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$ViewHolder;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method
