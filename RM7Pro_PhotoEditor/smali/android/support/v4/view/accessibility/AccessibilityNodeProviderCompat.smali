.class public Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;
    }
.end annotation


# static fields
.field public static final HOST_VIEW_ID:I = -0x1

.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;


# instance fields
.field private final mProvider:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;

    goto :goto_1

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;->newAccessibilityNodeProviderBridge(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getProvider()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
