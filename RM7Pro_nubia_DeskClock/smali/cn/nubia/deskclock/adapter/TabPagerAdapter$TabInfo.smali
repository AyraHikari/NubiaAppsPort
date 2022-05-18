.class final Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;
.super Ljava/lang/Object;
.source "TabPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/adapter/TabPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/deskclock/adapter/TabPagerAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/TabPagerAdapter;Ljava/lang/Class;I)V
    .locals 2
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/TabPagerAdapter;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->this$0:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 50
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    const-string v1, "tab_position"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/TabPagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
