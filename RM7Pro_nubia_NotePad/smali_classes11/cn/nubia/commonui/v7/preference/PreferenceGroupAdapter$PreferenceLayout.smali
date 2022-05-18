.class Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)V
    .locals 1
    .param p1, "other"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iget v0, p1, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iput v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    .line 95
    iget v0, p1, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iput v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    .line 96
    iget-object v0, p1, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    .line 97
    return-void
.end method

.method static synthetic access$102(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 86
    iget v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 101
    instance-of v2, p1, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 104
    check-cast v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 105
    .local v0, "other":Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v3, v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v3, v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v3, v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    .line 107
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 112
    const/16 v0, 0x11

    .line 113
    .local v0, "result":I
    iget v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    add-int/lit16 v0, v1, 0x20f

    .line 114
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    add-int v0, v1, v2

    .line 115
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 116
    return v0
.end method
