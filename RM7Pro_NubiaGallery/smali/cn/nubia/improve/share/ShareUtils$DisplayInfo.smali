.class Lcn/nubia/improve/share/ShareUtils$DisplayInfo;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/share/ShareUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayInfo"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/share/ShareUtils$1;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/improve/share/ShareUtils$DisplayInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/nubia/improve/share/ShareUtils$DisplayInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p1
.end method
