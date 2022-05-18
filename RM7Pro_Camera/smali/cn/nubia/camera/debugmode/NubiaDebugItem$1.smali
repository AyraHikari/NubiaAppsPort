.class Lcn/nubia/camera/debugmode/NubiaDebugItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/debugmode/NubiaDebugItem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/preference/c;Lcn/nubia/camera/debugmode/NubiaDebugItem$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/debugmode/NubiaDebugItem;


# direct methods
.method constructor <init>(Lcn/nubia/camera/debugmode/NubiaDebugItem;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem$1;->a:Lcn/nubia/camera/debugmode/NubiaDebugItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem$1;->a:Lcn/nubia/camera/debugmode/NubiaDebugItem;

    invoke-static {p1, p2}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->a(Lcn/nubia/camera/debugmode/NubiaDebugItem;Z)V

    .line 59
    iget-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem$1;->a:Lcn/nubia/camera/debugmode/NubiaDebugItem;

    invoke-static {p1}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->a(Lcn/nubia/camera/debugmode/NubiaDebugItem;)Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem$1;->a:Lcn/nubia/camera/debugmode/NubiaDebugItem;

    invoke-static {p1}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->a(Lcn/nubia/camera/debugmode/NubiaDebugItem;)Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/debugmode/NubiaDebugItem$1;->a:Lcn/nubia/camera/debugmode/NubiaDebugItem;

    invoke-static {v0}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->b(Lcn/nubia/camera/debugmode/NubiaDebugItem;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcn/nubia/camera/debugmode/NubiaDebugItem$a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
