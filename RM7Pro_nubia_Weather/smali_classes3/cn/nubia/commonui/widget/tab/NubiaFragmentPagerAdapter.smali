.class public abstract Lcn/nubia/commonui/widget/tab/NubiaFragmentPagerAdapter;
.super Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;
.source "NubiaFragmentPagerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/tab/FragmentPagerAdapterTab;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract getItemId(I)J
.end method

.method public getPageImage(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPageTitle(I)Ljava/lang/CharSequence;
.end method
