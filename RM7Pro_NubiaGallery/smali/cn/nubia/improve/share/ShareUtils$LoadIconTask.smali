.class public Lcn/nubia/improve/share/ShareUtils$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/share/ShareUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Lcn/nubia/improve/share/ShareUtils$DisplayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isMore:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

.field private mImageView:Landroid/widget/ImageView;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 89
    new-instance v0, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;-><init>(Lcn/nubia/improve/share/ShareUtils$1;)V

    iput-object v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->isMore:Z

    .line 109
    iput-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 89
    new-instance v0, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;-><init>(Lcn/nubia/improve/share/ShareUtils$1;)V

    iput-object v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->isMore:Z

    .line 103
    iput-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mTextView:Landroid/widget/TextView;

    .line 105
    iput-object p3, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/content/pm/ResolveInfo;Z)V
    .locals 2

    .line 93
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 89
    new-instance v0, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;-><init>(Lcn/nubia/improve/share/ShareUtils$1;)V

    iput-object v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->isMore:Z

    .line 94
    iput-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mTextView:Landroid/widget/TextView;

    .line 96
    iput-object p3, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mImageView:Landroid/widget/ImageView;

    .line 97
    iput-object p4, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 98
    iput-boolean p5, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->isMore:Z

    return-void
.end method

.method private getIconByUser(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    :try_start_0
    const-string v0, "android.os.UserHandle"

    .line 139
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 140
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const v2, 0x186a0

    .line 141
    div-int/2addr p2, v2

    sget v2, Lcn/nubia/improve/share/ShareUtils;->FENGSHENG_USER_ID:I

    if-eq p2, v2, :cond_0

    return-object p1

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 142
    sget v1, Lcn/nubia/improve/share/ShareUtils;->FENGSHENG_USER_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 143
    iget-object v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    check-cast p2, Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 146
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Lcn/nubia/improve/share/ShareUtils$DisplayInfo;
    .locals 4

    const/4 v0, 0x0

    .line 115
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    iget-object v1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$102(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    iget-object v1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$202(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 121
    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 123
    iget-object v1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 124
    iget-object v2, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    invoke-direct {p0, p1, v1}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->getIconByUser(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$102(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    iget-object v1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$202(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 129
    :goto_0
    iget-boolean p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->isMore:Z

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$100(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    const/high16 v2, 0x423c0000    # 47.0f

    .line 131
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {v3, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 130
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mDisplayInfo:Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->doInBackground([Ljava/lang/Boolean;)Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 154
    iget-boolean v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->isMore:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$200(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$100(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$200(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->access$100(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/share/ShareUtils$LoadIconTask;->onPostExecute(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)V

    return-void
.end method
