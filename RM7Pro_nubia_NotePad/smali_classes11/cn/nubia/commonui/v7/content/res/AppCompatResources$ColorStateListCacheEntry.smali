.class Lcn/nubia/commonui/v7/content/res/AppCompatResources$ColorStateListCacheEntry;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/content/res/AppCompatResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorStateListCacheEntry"
.end annotation


# instance fields
.field final configuration:Landroid/content/res/Configuration;

.field final value:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "value"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcn/nubia/commonui/v7/content/res/AppCompatResources$ColorStateListCacheEntry;->value:Landroid/content/res/ColorStateList;

    .line 185
    iput-object p2, p0, Lcn/nubia/commonui/v7/content/res/AppCompatResources$ColorStateListCacheEntry;->configuration:Landroid/content/res/Configuration;

    .line 186
    return-void
.end method
