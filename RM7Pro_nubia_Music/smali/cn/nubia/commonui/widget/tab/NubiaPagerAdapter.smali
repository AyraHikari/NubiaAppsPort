.class public abstract Lcn/nubia/commonui/widget/tab/NubiaPagerAdapter;
.super Lcn/nubia/commonui/widget/tab/PagerAdapterTab;
.source "NubiaPagerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/commonui/widget/tab/PagerAdapterTab;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getItemId(I)J
.end method

.method public getPageImage(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPageTitle(I)Ljava/lang/CharSequence;
.end method
