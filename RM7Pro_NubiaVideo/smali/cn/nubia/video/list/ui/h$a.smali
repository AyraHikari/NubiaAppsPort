.class Lcn/nubia/video/list/ui/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/commonui/app/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/h;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/h;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/h$a;->a:Lcn/nubia/video/list/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/list/ui/h$a;->a:Lcn/nubia/video/list/ui/h;

    invoke-static {p1}, Lcn/nubia/video/list/ui/h;->w(Lcn/nubia/video/list/ui/h;)V

    :goto_0
    return-void
.end method
