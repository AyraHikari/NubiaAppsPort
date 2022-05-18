.class Lcn/nubia/camera/h/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Long;

.field b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Long;Landroid/graphics/Rect;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcn/nubia/camera/h/b$a;->a:Ljava/lang/Long;

    .line 191
    iput-object p2, p0, Lcn/nubia/camera/h/b$a;->b:Landroid/graphics/Rect;

    return-void
.end method
