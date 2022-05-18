.class Lcn/nubia/collage/a$a;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/a;


# direct methods
.method constructor <init>(Lcn/nubia/collage/a;)V
    .locals 1

    iput-object p1, p0, Lcn/nubia/collage/a$a;->a:Lcn/nubia/collage/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcn/nubia/collage/a;->a(Lcn/nubia/collage/a;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageQuality"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
