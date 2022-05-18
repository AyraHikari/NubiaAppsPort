.class Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;
.super Lc/a/a/a/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/modules/videoRender/VirtualVideoViewImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;


# direct methods
.method private constructor <init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-direct {p0}, Lc/a/a/a/c$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;-><init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V

    return-void
.end method


# virtual methods
.method public c(Lc/a/a/a/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->L(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->J(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/d;

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/a/c;->i()F

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/modules/videoRender/d;->f(F)V

    .line 3
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->M(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V

    .line 4
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$c;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {p1}, Lc/c/a/f/a/c;->l()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
