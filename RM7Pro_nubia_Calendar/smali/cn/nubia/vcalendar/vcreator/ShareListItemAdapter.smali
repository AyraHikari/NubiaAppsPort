.class public Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareListItemAdapter.java"


# instance fields
.field private dist:I

.field private height:I

.field private left:I

.field private mContext:Landroid/content/Context;

.field private mShareItemImgs:[I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v1, 0x4

    new-array v1, v1, [I

    sget v2, Lcn/nubia/calendarcommon/R$drawable;->share_beamplus:I

    aput v2, v1, v4

    sget v2, Lcn/nubia/calendarcommon/R$drawable;->share_email:I

    aput v2, v1, v5

    const/4 v2, 0x2

    sget v3, Lcn/nubia/calendarcommon/R$drawable;->share_bluetooth:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcn/nubia/calendarcommon/R$drawable;->share_smsmms:I

    aput v3, v1, v2

    iput-object v1, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->mShareItemImgs:[I

    .line 25
    iput v4, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->height:I

    .line 26
    iput v4, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->left:I

    .line 27
    iput v4, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->top:I

    .line 28
    iput v4, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->dist:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 32
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->height:I

    .line 33
    invoke-static {v5, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->left:I

    .line 34
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->top:I

    .line 35
    invoke-static {v5, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->dist:I

    .line 36
    iput-object p1, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->mShareItemImgs:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 56
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/calendarcommon/R$array;->share_array:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, p1

    .line 58
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 62
    .local v0, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    iget v3, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->height:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 65
    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->mShareItemImgs:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 66
    iget v3, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->left:I

    iget v4, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->top:I

    iget v5, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->left:I

    iget v6, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->top:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    iget v3, p0, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;->dist:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 68
    return-object v2
.end method
