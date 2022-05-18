.class public Lcn/nubia/improve/share/CustomShareFilter;
.super Ljava/lang/Object;
.source "CustomShareFilter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilterInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherLocalInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherPriorFirstInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherPriorSecondInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherThirdPartyInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorFirstAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorSecondAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mContext:Landroid/content/Context;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mFilterInfo:Ljava/util/ArrayList;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherInfo:Ljava/util/ArrayList;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherPriorFirstInfo:Ljava/util/ArrayList;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherPriorSecondInfo:Ljava/util/ArrayList;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherLocalInfo:Ljava/util/ArrayList;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherThirdPartyInfo:Ljava/util/ArrayList;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mPriorFirstAppList:Ljava/util/ArrayList;

    const-string v0, "cn.nubia.improve.nubiacloud.share.NubiaCloudShareActivity"

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mPriorSecondAppList:Ljava/util/ArrayList;

    const-string v0, "cn.nubia.cloud.activities.CloudFileListActivity"

    .line 42
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private adjustSequence(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_4

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 126
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 127
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 128
    iget-object v5, p0, Lcn/nubia/improve/share/CustomShareFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_1
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    .line 132
    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sub-int/2addr v1, v0

    :goto_1
    if-lez v1, :cond_4

    .line 135
    aget-object v0, v2, v1

    move v3, v1

    :goto_2
    if-ltz v3, :cond_3

    .line 137
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcn/nubia/improve/share/CustomShareFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    invoke-static {p1, v3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :goto_4
    return-void
.end method

.method private mergerInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherInfo:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public filterInfo(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 49
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_0

    .line 50
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iput-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mTargetInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 54
    :cond_0
    iget-object v2, p0, Lcn/nubia/improve/share/CustomShareFilter;->mPriorFirstAppList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/improve/share/CustomShareFilter;->mPriorFirstAppList:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherPriorFirstInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lcn/nubia/improve/share/CustomShareFilter;->mPriorSecondAppList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/improve/share/CustomShareFilter;->mPriorSecondAppList:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    iget-object v1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherPriorSecondInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 62
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 63
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Lcn/nubia/improve/share/CustomShareFilter;->mFilterInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_3
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 70
    :try_start_0
    iget-object v3, p0, Lcn/nubia/improve/share/CustomShareFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    if-eqz v2, :cond_4

    .line 74
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_4

    .line 76
    iget-object v1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherThirdPartyInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 78
    :cond_4
    iget-object v1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherLocalInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 84
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherLocalInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcn/nubia/improve/share/CustomShareFilter;->adjustSequence(Ljava/util/ArrayList;)V

    .line 85
    iget-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherThirdPartyInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcn/nubia/improve/share/CustomShareFilter;->adjustSequence(Ljava/util/ArrayList;)V

    .line 87
    iget-object p1, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherPriorFirstInfo:Ljava/util/ArrayList;

    iget-object p2, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherPriorSecondInfo:Ljava/util/ArrayList;

    iget-object p3, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherLocalInfo:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherThirdPartyInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/improve/share/CustomShareFilter;->mergerInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getFilterInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mFilterInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOtherInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mTargetInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mTargetInfo:Landroid/content/pm/ResolveInfo;

    .line 105
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mFilterInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherPriorFirstInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherPriorSecondInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherLocalInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v0, p0, Lcn/nubia/improve/share/CustomShareFilter;->mOtherThirdPartyInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
