.class public Landroid/preference/nubia/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/nubia/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Landroid/preference/nubia/SwitchPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/nubia/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/nubia/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/nubia/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    new-instance v0, Landroid/preference/nubia/SwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/nubia/SwitchPreference$Listener;-><init>(Landroid/preference/nubia/SwitchPreference;Landroid/preference/nubia/SwitchPreference$1;)V

    iput-object v0, p0, Landroid/preference/nubia/SwitchPreference;->mListener:Landroid/preference/nubia/SwitchPreference$Listener;

    .line 33
    return-void
.end method

.method static synthetic access$100(Landroid/preference/nubia/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/nubia/SwitchPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Landroid/preference/nubia/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 64
    return-void
.end method
