.class final Lmiui/util/ScreenshotUtils$1;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isPort:Z

.field final synthetic val$rotation:I

.field final synthetic val$shortComponentName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lmiui/util/ScreenshotUtils$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lmiui/util/ScreenshotUtils$1;->val$rotation:I

    iput-object p3, p0, Lmiui/util/ScreenshotUtils$1;->val$shortComponentName:Ljava/lang/String;

    iput-boolean p4, p0, Lmiui/util/ScreenshotUtils$1;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v13, 0x3f000000    # 0.5f

    .line 129
    :try_start_0
    iget-object v10, p0, Lmiui/util/ScreenshotUtils$1;->val$context:Landroid/content/Context;

    const/16 v11, 0x7d0

    invoke-static {v10, v11}, Landroid/view/MiuiWindowManager;->getLayer(Landroid/content/Context;I)I

    move-result v7

    .line 130
    .local v7, "statusBarLayer":I
    sget v10, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v11, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v12, v7}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 131
    .local v6, "screenshot":Landroid/graphics/Bitmap;
    sget v10, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    int-to-float v10, v10

    # getter for: Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$000()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    sget v11, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    int-to-float v11, v11

    # getter for: Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$000()F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 135
    .local v5, "saveBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v10, p0, Lmiui/util/ScreenshotUtils$1;->val$rotation:I

    if-eq v10, v8, :cond_0

    iget v10, p0, Lmiui/util/ScreenshotUtils$1;->val$rotation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 139
    :cond_0
    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v14

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v14

    invoke-virtual {v1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 143
    :cond_1
    # getter for: Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$000()F

    move-result v10

    # getter for: Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$000()F

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 144
    new-instance v4, Landroid/graphics/Paint;

    const/4 v10, 0x3

    invoke-direct {v4, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 145
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v6, v10, v11, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lmiui/util/ScreenshotUtils$1;->val$shortComponentName:Ljava/lang/String;

    iget-boolean v11, p0, Lmiui/util/ScreenshotUtils$1;->val$isPort:Z

    invoke-static {v10, v11}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    .local v3, "outStream":Ljava/io/FileOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v5, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 155
    iget-object v10, p0, Lmiui/util/ScreenshotUtils$1;->val$shortComponentName:Ljava/lang/String;

    iget-boolean v11, p0, Lmiui/util/ScreenshotUtils$1;->val$isPort:Z

    if-nez v11, :cond_3

    :goto_0
    invoke-static {v10, v8}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 156
    .local v0, "anotherFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "anotherFile":Ljava/io/File;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "saveBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "screenshot":Landroid/graphics/Bitmap;
    .end local v7    # "statusBarLayer":I
    :cond_2
    :goto_1
    return-void

    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "saveBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "screenshot":Landroid/graphics/Bitmap;
    .restart local v7    # "statusBarLayer":I
    :cond_3
    move v8, v9

    .line 155
    goto :goto_0

    .line 157
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "saveBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "screenshot":Landroid/graphics/Bitmap;
    .end local v7    # "statusBarLayer":I
    :catch_0
    move-exception v2

    .line 158
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
