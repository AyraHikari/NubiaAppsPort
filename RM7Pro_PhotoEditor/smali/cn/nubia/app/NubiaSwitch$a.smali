.class final Lcn/nubia/app/NubiaSwitch$a;
.super Lb/a/b/b/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/app/NubiaSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/b/b/a/b<",
        "Lcn/nubia/app/NubiaSwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/b/b/a/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcn/nubia/app/NubiaSwitch;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/app/NubiaSwitch$a;->d(Lcn/nubia/app/NubiaSwitch;F)V

    return-void
.end method

.method public c(Lcn/nubia/app/NubiaSwitch;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcn/nubia/app/NubiaSwitch;->a(Lcn/nubia/app/NubiaSwitch;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcn/nubia/app/NubiaSwitch;F)V
    .locals 0

    invoke-static {p1, p2}, Lcn/nubia/app/NubiaSwitch;->b(Lcn/nubia/app/NubiaSwitch;F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcn/nubia/app/NubiaSwitch;

    invoke-virtual {p0, p1}, Lcn/nubia/app/NubiaSwitch$a;->c(Lcn/nubia/app/NubiaSwitch;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
