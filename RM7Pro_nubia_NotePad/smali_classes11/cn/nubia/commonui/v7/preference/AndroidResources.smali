.class public Lcn/nubia/commonui/v7/preference/AndroidResources;
.super Ljava/lang/Object;
.source "AndroidResources.java"


# static fields
.field public static final ANDROID_R_EDITTEXT_PREFERENCE_STYLE:I

.field public static final ANDROID_R_ICON_FRAME:I

.field public static final ANDROID_R_LIST_CONTAINER:I = 0x102003f

.field public static final ANDROID_R_PREFERENCE_FRAGMENT_STYLE:I

.field public static final ANDROID_R_SWITCH_WIDGET:I = 0x1020040


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget v0, Lcn/nubia/commonui/R$id;->icon_frame:I

    sput v0, Lcn/nubia/commonui/v7/preference/AndroidResources;->ANDROID_R_ICON_FRAME:I

    .line 33
    sget v0, Lcn/nubia/commonui/R$attr;->preferenceFragmentStyle:I

    sput v0, Lcn/nubia/commonui/v7/preference/AndroidResources;->ANDROID_R_PREFERENCE_FRAGMENT_STYLE:I

    .line 35
    sget v0, Lcn/nubia/commonui/R$attr;->editTextPreferenceStyle:I

    sput v0, Lcn/nubia/commonui/v7/preference/AndroidResources;->ANDROID_R_EDITTEXT_PREFERENCE_STYLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
