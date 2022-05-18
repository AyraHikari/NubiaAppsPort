.class Lcn/nubia/i/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcn/nubia/i/g;


# direct methods
.method private constructor <init>(Lcn/nubia/i/g;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcn/nubia/i/g$b;->d:Lcn/nubia/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/i/g;Lcn/nubia/i/g$1;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcn/nubia/i/g$b;-><init>(Lcn/nubia/i/g;)V

    return-void
.end method
