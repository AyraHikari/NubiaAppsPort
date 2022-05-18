.class public abstract Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/preference/PreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PreferenceComparisonCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract arePreferenceContentsTheSame(Lcn/nubia/commonui/v7/preference/Preference;Lcn/nubia/commonui/v7/preference/Preference;)Z
.end method

.method public abstract arePreferenceItemsTheSame(Lcn/nubia/commonui/v7/preference/Preference;Lcn/nubia/commonui/v7/preference/Preference;)Z
.end method
