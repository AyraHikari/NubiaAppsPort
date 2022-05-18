.class public Lcn/nubia/choosephoto/ui/e;
.super Lcn/nubia/choosephoto/ui/f;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/choosephoto/ui/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcn/nubia/choosephoto/ui/e$a;

    const v1, 0x7f0b0005

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/choosephoto/ui/e$a;-><init>(Lcn/nubia/choosephoto/ui/e;Ljava/util/List;I)V

    iput-object v0, p0, Lcn/nubia/choosephoto/ui/b;->c:Landroid/widget/BaseAdapter;

    return-void
.end method
